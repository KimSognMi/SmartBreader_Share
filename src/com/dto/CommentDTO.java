package com.dto;

public class CommentDTO {

	private String commentParentName;
	private int commentParentPassword;
	private String commentParentText;
	private int commentNum;
	private String commentwriteday;
	public CommentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommentDTO(String commentParentName, int commentParentPassword, String commentParentText, int commentNum,
			String commentwriteday) {
		super();
		this.commentParentName = commentParentName;
		this.commentParentPassword = commentParentPassword;
		this.commentParentText = commentParentText;
		this.commentNum = commentNum;
		this.commentwriteday = commentwriteday;
	}
	public String getCommentParentName() {
		return commentParentName;
	}
	public void setCommentParentName(String commentParentName) {
		this.commentParentName = commentParentName;
	}
	public int getCommentParentPassword() {
		return commentParentPassword;
	}
	public void setCommentParentPassword(int commentParentPassword) {
		this.commentParentPassword = commentParentPassword;
	}
	public String getCommentParentText() {
		return commentParentText;
	}
	public void setCommentParentText(String commentParentText) {
		this.commentParentText = commentParentText;
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public String getCommentwriteday() {
		return commentwriteday;
	}
	public void setCommentwriteday(String commentwriteday) {
		this.commentwriteday = commentwriteday;
	}
	@Override
	public String toString() {
		return "BoardDTO [commentParentName=" + commentParentName + ", commentParentPassword=" + commentParentPassword
				+ ", commentParentText=" + commentParentText + ", commentNum=" + commentNum + ", commentwriteday="
				+ commentwriteday + "]";
	}
	
	
	
	
	
	
	
	
}
