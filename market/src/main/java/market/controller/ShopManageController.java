package market.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import market.model.Order_manageDTO;
import market.model.Order_productDTO;
import market.service.PagingPgm;
import market.service.ShopManageService;

@Controller
public class ShopManageController {

	@Autowired
	private ShopManageService sms;

	// 판매자 주문 리스트
	@RequestMapping("order_tabList.do")
	public String order_tabList(HttpSession session, HttpServletRequest request,
			Model model, String pageNum, Order_manageDTO order_manage) {
		
		session = request.getSession();

		int s_no = (int) session.getAttribute("s_no");
		
		order_manage.setS_no(s_no);
		
		final int rowPerPage=5;
		
		if(pageNum == null || pageNum.equals("")) {
			pageNum="1";
		}
		
		int currentPage = Integer.parseInt(pageNum);
		
		int total = sms.getTotal(s_no);
		
		int startRow = (currentPage-1)*rowPerPage+1;
		int endRow = startRow+rowPerPage-1;
		
		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);
		
		order_manage.setStartRow(startRow);
		order_manage.setEndRow(endRow);
		
		int no = total-startRow+1;

		List<Order_manageDTO> olist = sms.olist(order_manage);
		model.addAttribute("olist", olist);
		model.addAttribute("no", no);
		model.addAttribute("pp", pp);

		return "shop_page/order_tabList";
	}
	
	// 주문처리상세
	@RequestMapping("shopOrderDetail.do")
	public String orderDetail(int o_no, Model model) {

		System.out.println("넘겨받은주문번호: " + o_no);

		List<Order_manageDTO> odlist = sms.odlist(o_no);
		model.addAttribute("odlist", odlist);

		return "shop_page/shopOrderDetail";
	}

	// 환불관리
	@RequestMapping("refundList.do")
	public String refundList(HttpSession session, HttpServletRequest request, Model model) {

		session = request.getSession();

		int s_no = (int) session.getAttribute("s_no");

		List<Order_productDTO> oplist = sms.oplist(s_no);
		model.addAttribute("oplist", oplist);

		return "shop_page/refundList";
	}

	// 환불승인
	@RequestMapping("refundOk")
	public String refundOk(Model model, int op_no, int o_no) {
		
		
		int result = sms.refundOk(op_no);

		model.addAttribute("result",result);
		
		return "shop_page/refundOkResult";
	}

	// 환불거부
	@RequestMapping("refundNo")
	public String refundNo(Model model, int op_no, int o_no) {
		
		int result = sms.refundNo(op_no);
		
		model.addAttribute("result",result);

		return "shop_page/refundNoResult";
	}

	// 운송장 입력버튼 눌렀을때
	@RequestMapping("deliInsert.do")
	public String delivery(Model model, String dno, int opno, int o_no) {

		System.out.println("상품번호 : " + opno);
		System.out.println("운송장번호 : " + dno);
		System.out.println("받아온 o_no값은 ? : " + o_no);

		Order_manageDTO omdto = new Order_manageDTO();

		omdto.setOp_deli_no(dno);
		omdto.setOp_status("6");
		omdto.setOp_no(opno);

		
		int result = sms.deliNoInsert(omdto);

		if (result == 1)
			System.out.println("운송장번호 입력성공!");
		
		model.addAttribute("o_no", o_no);
		model.addAttribute("result", result);


		return "shop_page/deliInsertResult";
	}
	
	// 배송완료처리
	@RequestMapping("deliOk.do")
	public String deliOk(Model model, int op_no, int o_no) {
		
		int result = sms.deliOk(op_no);
		
		model.addAttribute("result", result);
		model.addAttribute("o_no", o_no);
		
		return "shop_page/deliOkResult";
	}

	// 품절취소
	@RequestMapping("shopOrderCancel.do")
	public String shopOrderCancel(int o_no, int op_no, Model model) {

		Order_manageDTO omdto = new Order_manageDTO();

		omdto.setOp_status("5");
		omdto.setOp_no(op_no);

		int result = sms.cancel(omdto);

		if (result == 1) {
			System.out.println("품절취소 상태변경 성공!");
		}

		model.addAttribute("o_no", o_no);
		model.addAttribute("result", result);

		return "shop_page/shopCancelResult";
	}

}
