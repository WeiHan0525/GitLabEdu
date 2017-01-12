package fcu.android.backend.connect;

import org.gitlab.api.TokenType;
import org.gitlab.api.AuthMethod;
import org.gitlab.api.GitlabAPI;
import org.gitlab.api.models.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class UserConn{
	//http://140.134.26.71:20080/api/v3/users?private_token=yUnRUT5ex1s3HU7yQ_g-
	private String _hostUrl = "http://140.134.26.71:20080";
	private String _apiToken = "yUnRUT5ex1s3HU7yQ_g-";
	private TokenType tokenType = TokenType.PRIVATE_TOKEN;
	private AuthMethod authMethod = AuthMethod.URL_PARAMETER;
	
	public UserConn() {
		
	}
	
	private GitlabAPI gitlab = GitlabAPI.connect(_hostUrl, _apiToken, tokenType, authMethod);
//	private GitlabSession session = GitlabAPI.connect(_hostUrl, userName, password);
	
	public GitlabUser getUser(){
		GitlabUser gitlabUser = new GitlabUser();
		
		try {
			gitlabUser = gitlab.getUser();
		}catch(IOException e) {
			System.out.println(e);	
		}
		return gitlabUser;
	}
	
	public List<GitlabUser> getUsers() {
		List<GitlabUser> lsUser = new ArrayList<GitlabUser>();
		
		try{
			lsUser = gitlab.getUsers();
		}catch(IOException e) {
			System.out.println(e);	
		}
		return lsUser;
	}
	
	/**
     * Create a new User
     * createUser(String email, String password, String username,
     *            String fullName, String skypeId, String linkedIn,
     *            String twitter, String website_url, Integer projects_limit,
     *            String extern_uid, String extern_provider_name,
     *            String bio, Boolean isAdmin, Boolean can_create_group,
     *            Boolean skip_confirmation)
     *
     * @param email                User email
     * @param password             Password
     * @param username             User name
     * @param fullName             Full name
     * @param skypeId              Skype Id
     * @param linkedIn             LinkedIn
     * @param twitter              Twitter
     * @param website_url          Website URL
     * @param projects_limit       Projects limit
     * @param extern_uid           External User ID
     * @param extern_provider_name External Provider Name
     * @param bio                  Bio
     * @param isAdmin              Is Admin
     * @param can_create_group     Can Create Group
     * @param skip_confirmation    Skip Confirmation
     * @return                     A GitlabUser
     * @throws IOException on gitlab api call error
     * @see <a href="http://doc.gitlab.com/ce/api/users.html">http://doc.gitlab.com/ce/api/users.html</a>
     */	
	public boolean createUser(String email, String password, String userName, String fullName) {
		try {
			gitlab.createUser(email, password, userName, fullName, "", "", "", "", 10, "", "", "", false, true, null);
			return true;
		}catch (IOException e){
			System.out.println(e);
		}
		return false;
	}
	
	/*createUserProject(Integer userId, 
	 * 					String name, 
	 * 					String description, 
	 * 					String defaultBranch, 
	 * 					Boolean issuesEnabled, 
	 * 					Boolean wallEnabled, 
	 * 					Boolean mergeRequestsEnabled, 
	 * 					Boolean wikiEnabled, 
	 *					Boolean snippetsEnabled, 
	 *					Boolean publik, 
	 *					Integer visibilityLevel, 
	 *					String importUrl)*/
	public boolean createPrivateProject(String Pname, String description){
		List<GitlabUser> users = getUsers();
//		GitlabUser user = users.get(0);
		
		try {
			for (GitlabUser user: users){
				if (user.getId() == 1) continue;
				gitlab.createUserProject(user.getId(), Pname);
//				gitlab.createUserProject(user.getId(), Pname, description, null, true, true, true, true, false, false, 0, null);
			}
			return true;
		}catch (IOException e){
			System.out.println(e);
		}
		return false;
	}

}
