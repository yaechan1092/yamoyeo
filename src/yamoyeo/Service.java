package yamoyeo;

import java.util.ArrayList;

public class Service {
	
	private static Service service = new Service();
	
	public static Service getInstance(){
		return service;
	}
	
	public void insertUser(UserVO user){ 
		new UserDAO().insertUser(user);
	}
	
	public UserVO searchUser(String user_id){
		return new UserDAO().searchUser(user_id);
	}
	
	public String searchID(String id, String pwd){
		return new UserDAO().searchID(id, pwd);
	}
	
	public void updateUser(UserVO user){
		 new UserDAO().updateUser(user);
	}
	
//	--------------User 접근 메소드----------------------
	
	public void insertGroup(GroupVO2 group){
		new GroupDAO().insertGroup(group);
	}
	
	public void updateGroup(GroupVO2 group){
		new GroupDAO().updateGroup(group);
	}

	
	public GroupVO searchGroup(String group_id){
		return new GroupDAO().searchGroup(group_id);
	}
	
	public ArrayList<GroupVO> searchMygroup(String user_id){
		return new GroupDAO().searchMygroup(user_id);
	}
	
	public void deleteGroup(String group_id){
		new GroupDAO().deleteGroup(group_id);
	}
	
	public ArrayList<GroupVO> weeklyGroup(){
		return new GroupDAO().weeklyGroup();
	}
	
	public ArrayList<GroupVO> recentGroup(){
		return new GroupDAO().recentGroup();
	}
	
	public ArrayList<GroupVO> recGroup(String interest, String address){
		return new GroupDAO().recGroup(interest, address);
	}
	
	public ArrayList<GroupVO> groupSearch(String interest, String address, String day){
		return new GroupDAO().groupSearch(interest, address,day);
	}
//	--------------Group 접근 메소드----------------------
	
	public void insertComment(CommentVO comment){
		new CommentDAO().insertComment(comment);
	}
	
	public ArrayList<CommentVO> getComment(String group_id){
		return new CommentDAO().getComment(group_id);
	}
	
	public void deleteComment(int comment_id){
		new CommentDAO().deleteComment(comment_id);
	}
	
//	--------------Comment 접근 메소드----------------------
	
	public void addJoin(String user_id, String group_id){
		new JoinDAO().addJoin(user_id, group_id);
	}
	
	public void deleteJoin(String user_id, String group_id){
		new JoinDAO().deleteJoin(user_id, group_id);
	}
	
	
	public ArrayList<GroupVO> searchGroups(String user_id){
		return new JoinDAO().searchGroups(user_id);
	}
	
	public  ArrayList<UserVO> searchUsers(String group_id){
		return new JoinDAO().searchUsers(group_id);
	}
//	--------------Join 접근 메소드----------------------
}
