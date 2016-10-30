package yong.insa.model;

import java.sql.Date;

public class InsaDTO {

	private String SABUN;
	private Date JOIN_DAY;
	private Date RETIRE_DAY;
	private String PUT_YN;
	private String NAME;
	private String REG_NO;
	private String ENG_NAME;
	private String PHONE;
	private String HP;
	private String CARRIER;
	private String POS_GBN_CODE;
	private String CMP_REG_NO;
	private String CMP_REG_IMAGE;
	private String SEX;
	private int YEARS;
	private String EMAIL;
	private int ZIP;
	private String ADDR1;
	private String ADDR2;
	private String MIL_YN;
	private String JOIN_GBN_CODE;
	public InsaDTO() {
		super();
	}
	public InsaDTO(String sABUN, Date jOIN_DAY, Date rETIRE_DAY, String pUT_YN, String nAME, String rEG_NO,
			String eNG_NAME, String pHONE, String hP, String cARRIER, String pOS_GBN_CODE, String cMP_REG_NO,
			String cMP_REG_IMAGE, String sEX, int yEARS, String eMAIL, int zIP, String aDDR1, String aDDR2,
			String mIL_YN, String jOIN_GBN_CODE) {
		super();
		SABUN = sABUN;
		JOIN_DAY = jOIN_DAY;
		RETIRE_DAY = rETIRE_DAY;
		PUT_YN = pUT_YN;
		NAME = nAME;
		REG_NO = rEG_NO;
		ENG_NAME = eNG_NAME;
		PHONE = pHONE;
		HP = hP;
		CARRIER = cARRIER;
		POS_GBN_CODE = pOS_GBN_CODE;
		CMP_REG_NO = cMP_REG_NO;
		CMP_REG_IMAGE = cMP_REG_IMAGE;
		SEX = sEX;
		YEARS = yEARS;
		EMAIL = eMAIL;
		ZIP = zIP;
		ADDR1 = aDDR1;
		ADDR2 = aDDR2;
		MIL_YN = mIL_YN;
		JOIN_GBN_CODE = jOIN_GBN_CODE;
	}
	public String getSABUN() {
		return SABUN;
	}
	public void setSABUN(String sABUN) {
		SABUN = sABUN;
	}
	public Date getJOIN_DAY() {
		return JOIN_DAY;
	}
	public void setJOIN_DAY(Date jOIN_DAY) {
		JOIN_DAY = jOIN_DAY;
	}
	public Date getRETIRE_DAY() {
		return RETIRE_DAY;
	}
	public void setRETIRE_DAY(Date rETIRE_DAY) {
		RETIRE_DAY = rETIRE_DAY;
	}
	public String getPUT_YN() {
		return PUT_YN;
	}
	public void setPUT_YN(String pUT_YN) {
		PUT_YN = pUT_YN;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getREG_NO() {
		return REG_NO;
	}
	public void setREG_NO(String rEG_NO) {
		REG_NO = rEG_NO;
	}
	public String getENG_NAME() {
		return ENG_NAME;
	}
	public void setENG_NAME(String eNG_NAME) {
		ENG_NAME = eNG_NAME;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}
	public String getHP() {
		return HP;
	}
	public void setHP(String hP) {
		HP = hP;
	}
	public String getCARRIER() {
		return CARRIER;
	}
	public void setCARRIER(String cARRIER) {
		CARRIER = cARRIER;
	}
	public String getPOS_GBN_CODE() {
		return POS_GBN_CODE;
	}
	public void setPOS_GBN_CODE(String pOS_GBN_CODE) {
		POS_GBN_CODE = pOS_GBN_CODE;
	}
	public String getCMP_REG_NO() {
		return CMP_REG_NO;
	}
	public void setCMP_REG_NO(String cMP_REG_NO) {
		CMP_REG_NO = cMP_REG_NO;
	}
	public String getCMP_REG_IMAGE() {
		return CMP_REG_IMAGE;
	}
	public void setCMP_REG_IMAGE(String cMP_REG_IMAGE) {
		CMP_REG_IMAGE = cMP_REG_IMAGE;
	}
	public String getSEX() {
		return SEX;
	}
	public void setSEX(String sEX) {
		SEX = sEX;
	}
	public int getYEARS() {
		return YEARS;
	}
	public void setYEARS(int yEARS) {
		YEARS = yEARS;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public int getZIP() {
		return ZIP;
	}
	public void setZIP(int zIP) {
		ZIP = zIP;
	}
	public String getADDR1() {
		return ADDR1;
	}
	public void setADDR1(String aDDR1) {
		ADDR1 = aDDR1;
	}
	public String getADDR2() {
		return ADDR2;
	}
	public void setADDR2(String aDDR2) {
		ADDR2 = aDDR2;
	}
	public String getMIL_YN() {
		return MIL_YN;
	}
	public void setMIL_YN(String mIL_YN) {
		MIL_YN = mIL_YN;
	}
	public String getJOIN_GBN_CODE() {
		return JOIN_GBN_CODE;
	}
	public void setJOIN_GBN_CODE(String jOIN_GBN_CODE) {
		JOIN_GBN_CODE = jOIN_GBN_CODE;
	}
	
	}
