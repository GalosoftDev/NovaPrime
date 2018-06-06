package com.galosoft.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.galosoft.Dao.ProductDao;
import com.galosoft.model.Product;

@Controller
public class HomeController {
	
	private Path path;
	
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String getHome() {
		return "inicio";
	}
	
	@RequestMapping("/productList")
	public String getProducs(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		return "productList";
		
	}
	
	@RequestMapping("/admin/productInventory")
	public String getProductInventory(Model model) {
		List<Product> products = productDao.getAllProducts();
		model.addAttribute("products", products);
		return "productInventory";
	}
	
	@RequestMapping("/productList/viewProduct/{productId}")
	public String viewProduct(@PathVariable String productId, Model model) throws IOException {
		Product product = productDao.getProductById(productId);
		model.addAttribute(product);
		return "viewProduct";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model) {
		Product product = new Product();
		product.setProductCategory("watches");
		product.setProductCondition("new");
		product.setProductStatus("active");
		model.addAttribute("product", product);
		return "addProduct";
	}
	
	@RequestMapping(value="/admin/productInventory/addProduct", method=RequestMethod.POST)
		public String addProductPost(@Valid @ModelAttribute("product") Product product,BindingResult result, HttpServletRequest request) {
			
			if(result.hasErrors()) {
				return "addProduct";
			}
			
			productDao.addProduct(product);
			
			MultipartFile productImage = product.getProductImage();
			String rootDirectory = request.getSession().getServletContext().getRealPath("/");
			path = Paths.get(rootDirectory + "//WEB-INF//resources//img//" + product.getProductId()+ ".png");
			
			System.out.println(path);
			
			if(productImage != null && !productImage.isEmpty()) {
				try {
					productImage.transferTo(new File(path.toString()));
				}catch(Exception e) {
					e.printStackTrace();
					throw new RuntimeException("product saving failed...", e);
				}
			}
			
			return "redirect:/admin/productInventory";
		}
	
	
	@RequestMapping("/admin/productInventory/deleteProduct/{id}")
	public String deleteProduct(@PathVariable String id, Model model, HttpServletRequest request) {
		
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory +"//WEB-INF//resources//img//"+id+".png");
		
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		productDao.deleteProduct(id);
		return "redirect:/admin/productInventory";
	}
	
	
	@RequestMapping("/admin/productInventory/editProduct/{id}")
	public String editProduct(@PathVariable("id") String id, Model model) {
		Product product = productDao.getProductById(id);
		model.addAttribute(product);
		return "editProduct";
	}
	
	@RequestMapping(value="/admin/productInventory/editProduct", method = RequestMethod.POST)
	public String editProductPost(@ModelAttribute("product") Product product, HttpServletRequest request) {
		
		MultipartFile productImage = product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory +"//WEB-INF//resources//img//"+product.getProductId()+".png");
		
		System.out.println(path);
		
		if(productImage != null && !productImage.isEmpty()) {
	    	
			try {
				productImage.transferTo(new File(path.toString()));
			}catch(Exception e) {
				e.printStackTrace();
				throw new RuntimeException("Product Image saved failed");
			}
		}
		productDao.editProduct(product);
		
		return "redirect:/admin/productInventory";
	}
	
}




