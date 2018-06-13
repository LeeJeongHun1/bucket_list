package kr.co.bucket.Search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Search.service.SearchService;
import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.PageResult;
import kr.co.bucket.repository.domain.Payment;
import kr.co.bucket.repository.domain.Review;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/search.do")
	public void search(@RequestParam(value="pageNo", defaultValue="1") int pageNo, Search keyword, Model model, AllSearch AllSearch) throws Exception {
		keyword.setPageNo(pageNo);
		AllSearch.setPageNo(pageNo);
		System.out.println("전체검색 갯수" + searchService.Allsearch(keyword).size());
		System.out.println("---------------------------------------------------");
		model.addAttribute("key", keyword.getKeyword());
		model.addAttribute("allSearch", searchService.Allsearch(keyword));
		
		model.addAttribute("pageResult", new PageResult(pageNo, searchService.count(keyword)));
	}
	
	@RequestMapping("/searchDetail.do")
	public void detailSearch(String packageCode, Model model) throws Exception{
		model.addAttribute("packageCode", searchService.detailBoard(packageCode));
		model.addAttribute("img",searchService.imgRepeat());
	}
	
	@RequestMapping("/searchDetail.json")
	@ResponseBody
	public List<SResult> searchDetailJson(AllSearch AllSearch) throws Exception{
		System.out.println("-------------------디테일--------------------");
		System.out.println(AllSearch.getKeyword() +"= 키워드명");
		System.out.println(AllSearch.getDkeyword() +"= 재검색키워드명 ");
        List<SResult> list = searchService.DetailSearch(AllSearch);
        for(SResult s: list) {
        	System.out.println("도시명"+ s.getCityName());
        	System.out.println("패키지명"+s.getPackageName());
        	System.out.println("출발시간 "+s.getStartDate());
        }
        System.out.println("-------------디테일끝");
        return list;
	}
	
	@RequestMapping("/searchSelect.json")
	@ResponseBody
	public List<SResult> selectJson(AllSearch AllSearch) throws Exception{
		//System.out.println(AllSearch.getPrice());
		List<SResult> list = searchService.SelectSearch(AllSearch);
		return list;
	}
	
	@RequestMapping("/departureSelect.json")
	@ResponseBody
	public List<SResult> departureJson(AllSearch AllSearch) throws Exception{
		//System.out.println(AllSearch.getDeparture());
		List<SResult> list = searchService.SelectSearch(AllSearch);
		return list;
	}
	
	@RequestMapping("/reviewRegist.json")
	@ResponseBody
	public void reviewRegistJson(@RequestParam(value="packageCode") String packageCode,Review review) throws Exception{
		review.setPackageCode(packageCode);
		searchService.reviewRegist(review);
	}
	
	@RequestMapping("/reviewList.json")
	@ResponseBody
	public List<Review> reviewListJSon(String packageCode) throws Exception{
		List<Review> list = searchService.reivewList(packageCode);
		for(Review r:list) {
			System.out.println(r.getContent() +"확인즁");
		}
		return searchService.reivewList(packageCode);
	}
	
	@RequestMapping("/payment.do")
	public String insertPayment(Payment payment) throws Exception{
		System.out.println(payment +"컨트롤가격");
		searchService.insertPayment(payment);
		return "redirect:/main/index.do";
	}
	
}	
	 
