package kr.co.bucket.Search.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.bucket.Search.service.SearchService;
import kr.co.bucket.repository.domain.AllSearch;
import kr.co.bucket.repository.domain.SResult;
import kr.co.bucket.repository.domain.Search;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@RequestMapping("/search.do")
	public void search(Search keyword, Model model, AllSearch AllSearch) throws Exception {
	/*	System.out.println("와");
		List<SResult> list = searchService.Allsearch(keyword);
		System.out.println("컨트롤러 "+list.size());*/
		model.addAttribute("detailSearch", searchService.DetailSearch(AllSearch));
		model.addAttribute("allSearch", searchService.Allsearch(keyword));
		
		//System.out.println(search.getKeyword());
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
	
	@RequestMapping("/searchDetail.Json")
	@ResponseBody
	public List<SResult> searchDetailJson(AllSearch AllSearch) throws Exception{
        List<SResult> list = searchService.DetailSearch(AllSearch);
        System.out.println("가는지 테스트");
        return list;
	}
	
	
	
}	
	 
