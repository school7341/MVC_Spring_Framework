package yong.order.model;
import java.util.*;
public class OrderDTO {
	private List<ItemDTO> item;
	private OrderMarketDTO order;
	public OrderDTO() {
		super();
	}
	public OrderDTO(List<ItemDTO> item, OrderMarketDTO order) {
		super();
		this.item = item;
		this.order = order;
	}
	public List<ItemDTO> getItem() {
		return item;
	}
	public void setItem(List<ItemDTO> item) {
		this.item = item;
	}
	public OrderMarketDTO getOrder() {
		return order;
	}
	public void setOrder(OrderMarketDTO order) {
		this.order = order;
	}
	
}
