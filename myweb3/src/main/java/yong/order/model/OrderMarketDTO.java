package yong.order.model;

public class OrderMarketDTO {
	private String orderName;
	private String orderMarket;
	public OrderMarketDTO() {
		super();
	}
	public OrderMarketDTO(String orderName, String orderMarket) {
		super();
		this.orderName = orderName;
		this.orderMarket = orderMarket;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderMarket() {
		return orderMarket;
	}
	public void setOrderMarket(String orderMarket) {
		this.orderMarket = orderMarket;
	}
	
}
