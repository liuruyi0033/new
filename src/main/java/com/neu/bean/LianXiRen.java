package com.neu.bean;

public class LianXiRen {
	private Integer id;
	private String kehubianhao;
	private String xingming;
	private Integer xingbie;
	private String zhiwei;
	private String dianhua;
	private String shouji;
	private String beizhu;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKehubianhao() {
		return kehubianhao;
	}
	public void setKehubianhao(String kehubianhao) {
		this.kehubianhao = kehubianhao;
	}
	public String getXingming() {
		return xingming;
	}
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	public Integer getXingbie() {
		return xingbie;
	}
	public void setXingbie(Integer xingbie) {
		this.xingbie = xingbie;
	}
	public String getZhiwei() {
		return zhiwei;
	}
	public void setZhiwei(String zhiwei) {
		this.zhiwei = zhiwei;
	}
	public String getDianhua() {
		return dianhua;
	}
	public void setDianhua(String dianhua) {
		this.dianhua = dianhua;
	}
	public String getShouji() {
		return shouji;
	}
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	@Override
	public String toString() {
		return "LianXiRen [kehubianhao=" + kehubianhao + ", xingming=" + xingming + ", xingbie=" + xingbie + ", zhiwei="
				+ zhiwei + ", dianhua=" + dianhua + ", shouji=" + shouji + ", beizhu=" + beizhu + "]";
	}
	
}
