package com.springapps.Controller;

import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import com.springapps.entity.Cart;
import com.springapps.entity.Order;
import com.springapps.entity.Products;
import com.springapps.entity.Users;
import com.springapps.service.CartService;
import com.springapps.service.OrderService;
import com.springapps.service.ProductsService;
import com.springapps.service.UsersService;
import com.springapps.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/account")
public class CommonController {
	
	@Autowired
	ProductsService productsService;
	
	@Autowired
	UsersService usersService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/productsboy")
	public String showproductsboy(ModelMap model)
	{
		List<Products> products=productsService.getProducts();
		model.addAttribute("products",products);
		return "productsboy";
	}
	@RequestMapping("/productsgirl")
	public String showproductsgirl(ModelMap model) {
		List<Products> productsg=productsService.getProducts();
		model.addAttribute("productsg",productsg);
		return "productsgirl";
	}
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login(ModelMap mm)
	{
		mm.put("user",new Users());
		return "login";
	}
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String login(@ModelAttribute(value="user") Users user,ModelMap mm)
	{
		if(user.getUsername().equals("tek")&& user.getPassword().equals("123"))
			return "home";
		else if(user.getUsername().equals("admin")&& user.getPassword().equals("admin"))
			return "adminhome";
		else
		{
			PrintWriter out = new PrintWriter(System.out);
			mm.put("message","Login Failed,Invalid Credentials");
			out.println("InValid Credentials");
			return "login";
		}
	}
	@RequestMapping("/home")
	public String home()
	{
		return "home";
	}
	@RequestMapping("/homes")
	public String homes()
	{
		return "home";
	}
	@RequestMapping("/products")
	public String products(ModelMap model)
	{
		List<Products> products=productsService.getProducts();
		model.addAttribute("products",products);
		return "products";
	}
	@RequestMapping("/orders")
	public String orders(ModelMap model)
	{
		List<Order> order=orderService.getOrder();
		model.addAttribute("order",order);
		return "orders";
	}
	@RequestMapping("/cart")
	public String showcart(ModelMap model)
	{
		List<Cart> cart=cartService.getCart();
		model.addAttribute("cart",cart);
		return "cart";
	}
	@RequestMapping(value="/addtocart",method=RequestMethod.POST)
	public String cart(@ModelAttribute("cart")Cart cart,ModelMap model)
	{
		int result=cartService.save(cart);
		List<Cart> cartitems=cartService.getCart();
		model.addAttribute("cart", cartitems);
		return "cart";
	} 
	@RequestMapping("/buy")
	public String userdetails(ModelMap model)
	{
		List<Cart> cart=cartService.getCart();
		model.addAttribute("cart", cart);
		return "userdetails";
	}
	@RequestMapping(value="/ordersuccess",method=RequestMethod.POST)
	public String cart(@ModelAttribute("order")Order order,ModelMap model)
	{
		List<Cart> cart=cartService.getCart();
		Cart cartitem=new Cart();
		for(Cart item:cart)
		{
			order.setPrice(item.getMrp());
			order.setPcode(item.getId());
			order.setCategory(item.getCategory());
			order.setBrand(item.getBrand());
			order.setImage(item.getImage());
			orderService.save(order);
			cartitem.setId(item.getId());
			cartService.delete(cartitem);
		}
		model.addAttribute("orders", order);
		return "orders";
	} 
	@RequestMapping("/logout")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/adminhomes")
	public String adminhomes()
	{
		return "adminhome";
	}
	@RequestMapping("/change_password")
	public String change()
	{
		return "change_password";
	}
	@RequestMapping(value="/change_password",method=RequestMethod.POST)
	public String changed(@ModelAttribute("user") Users user, ModelMap model,BindingResult res)
	{
		user.setId(1);
		usersService.update(user);
		model.addAttribute("res","Password changed successfully");
		return "change_password";
	}
	@RequestMapping("/manage_products")
	public String manage()
	{
		return "manage_products";
	}
	@RequestMapping("/addproduct")
	public String add()
	{
		return "addproduct";
	}
	@RequestMapping(value="/add_product", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Products product, ModelMap model,BindingResult res) {
		int result = productsService.save(product);
		String message = "Product added successfully";
		model.addAttribute("result", message);
		return "addproduct";
	}
	@RequestMapping("/deleteproduct")
	public String delete()
	{
		return "deleteproduct";
	}
	@RequestMapping(value="/delete_product", method=RequestMethod.POST)
	public String deleteProduct(@ModelAttribute("product") Products product, ModelMap model,BindingResult res) {
		productsService.delete(product);
		String message = "Product deleted successfully";
		model.addAttribute("result", message);
		return "deleteproduct";
	}
	@RequestMapping("/users_list")
	public String userslist(ModelMap model)
	{
		List<Users> users=usersService.getUsers();
		model.addAttribute("users",users);
		return "users_list";
	}
	@RequestMapping("/add_user")
	public String adduser()
	{
		return "add_user";
	}
	@RequestMapping(value="/registeruser", method=RequestMethod.POST)
	public String registerUser(@ModelAttribute("user") Users user, ModelMap model,BindingResult res) {
		int result = usersService.save(user);
		String message = "User added successfully";
		model.addAttribute("result", message);
		return "add_user";
	}
	@RequestMapping("/search_user")
	public String searchuser()
	{
		return "search_user";
	}
	@RequestMapping(value="/search_user",method=RequestMethod.POST)
	public String searchuser(@ModelAttribute("user") Users user,ModelMap model,BindingResult result)
	{
		Users users=usersService.getUser(user.getId());
		model.addAttribute("result","User Found");
		model.addAttribute("users",users);
		return "search_result";
	}
	@RequestMapping("/purchase_reports")
	public String reports()
	{
		return "purchase_reports";
	}
	@RequestMapping(value="/filter",method=RequestMethod.GET)
	public String filterbydate(@RequestParam Date date,@RequestParam String category,@ModelAttribute("order") Order order,ModelMap model)
	{
		Order o=new Order();
		o.setDate(date);
		o.setCategory(category);
		model.addAttribute("date", date);
		model.addAttribute("category", category);
		List<Order> orders=orderService.getOrder();
		model.addAttribute("result","User Found");
		model.addAttribute("orders",orders);
		return "purchase_result";
	}
	@RequestMapping("/adminhome")
	public String adminhome()
	{
		return "adminhome";
	}
	@RequestMapping("/adminproducts")
	public String adminproducts(ModelMap model)
	{
		List<Products> products=productsService.getProducts();
		model.addAttribute("products",products);
		return "adminproducts";
	}
	@RequestMapping("/adminproductsboy")
	public String adminproductsboy(ModelMap model)
	{
		List<Products> products=productsService.getProducts();
		model.addAttribute("products_boy",products);
		return "adminproductsboy";
	}
	@RequestMapping("/adminproductsgirl")
	public String adminproductsgirl(ModelMap model)
	{
		List<Products> products=productsService.getProducts();
		model.addAttribute("products_girl",products);
		return "adminproductsgirl";
	}
	@RequestMapping(value="/view_products",method=RequestMethod.POST)
	public String viewproducts(@ModelAttribute("Products") Products products,ModelMap model,BindingResult result)
	{
		Products products1=productsService.getProduct(products.getId());
		model.addAttribute("products",products1);
		return "view_products";
	}
	@RequestMapping("/adminorders")
	public String adminorders(ModelMap model)
	{
		List<Order> order=orderService.getOrder();
		model.addAttribute("order",order);
		return "adminorders";
	}
	@RequestMapping("/admincart")
	public String admmincart(ModelMap model)
	{
		List<Cart> cart=cartService.getCart();
		model.addAttribute("cart",cart);
		return "admincart";
	}
}
