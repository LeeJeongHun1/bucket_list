package kr.co.bucket.Search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Search.service.SearchService;
import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.Page;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/search.do")
	public void search( Search keyword, Model model, AllSearch AllSearch) throws Exception {
			model.addAttribute("allSearch", searchService.Allsearch(keyword));
			model.addAttribute("count");
	}
	

	@RequestMapping("/searhList.json")
	@ResponseBody
	public List<SResult> searchListJson(Search keyword) throws Exception{
		List<SResult> allSearch = searchService.Allsearch(keyword);
		System.out.println("사이즈" + allSearch.size());
		for(SResult s: allSearch) {
			System.out.println(s.getPackageName());
		}
		return allSearch;
	}
	
	@RequestMapping("/searchDetail.do")
	public void detailSearch() {
		
	}
	
	@RequestMapping("/searchDetail.json")
	@ResponseBody
	public List<SResult> searchDetailJson(AllSearch AllSearch) throws Exception{
		System.out.println("가는지 테스트");
        List<SResult> list = searchService.DetailSearch(AllSearch);
        for(SResult s: list) {
        	System.out.println("디테일"+ s.getCityName());
        	System.out.println(s.getImgPath());
        	System.out.println(AllSearch.getStartDate().substring(0,4));
        	System.out.println(AllSearch.getPackagePrice());
        	System.out.println(AllSearch.getCityCode() +" 코드");
        }
        return list;
	}
	
	@RequestMapping("/searchSelect.json")
	@ResponseBody
	public List<SResult> selectJson(AllSearch AllSearch) throws Exception{
		System.out.println(AllSearch.getPrice());
		List<SResult> list = searchService.SelectSearch(AllSearch);
		return list;
	}
	
	@RequestMapping("/departureSelect.json")
	@ResponseBody
	public List<SResult> departureJson(AllSearch AllSearch) throws Exception{
		System.out.println(AllSearch.getDeparture());
		List<SResult> list = searchService.SelectSearch(AllSearch);
		return list;
	}
	
	
	
}	
	 
