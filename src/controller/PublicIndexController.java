package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.PictureDAO;
import dao.RememberDAO;
import util.CutString;
import util.SlugUtil;

@Controller
public class PublicIndexController {
	@Autowired
	private RememberDAO newDAO;
	@Autowired
	private PictureDAO catDao;
	@Autowired
	private SlugUtil slug;
	@Autowired
	private CutString cutString;

	@ModelAttribute
	public void addCommonObject(ModelMap model) {
		model.addAttribute("slug", slug);
	}


	@RequestMapping(value = "/")
	public String index() {
		return "public.index";
	}
	@RequestMapping(value = "/Hinh-Anh")
	public String hinhanh(ModelMap model) {
		model.addAttribute("listPic", catDao.getItems());
		return "public.hinhanh";
	}
	@RequestMapping(value = "/Gioi-Thieu")
	public String gioithieu() {
		return "public.gioithieu";
	}
	@RequestMapping(value = "/Ky-Niem")
	public String kyniem(ModelMap model) {
		model.addAttribute("listKN", newDAO.getItems());
		return "public.kyniem";
	}
	@RequestMapping(value = "/Ky-Niem/{id}")
	public String hinhanhkyniem(ModelMap model,@PathVariable("id") int id ) {
		model.addAttribute("listPictureByIdR", catDao.getItemsByIdR(id));
		model.addAttribute("objKyNiem",newDAO.getItem(id));
		return "public.hinhanhkyniem";
	}

}
