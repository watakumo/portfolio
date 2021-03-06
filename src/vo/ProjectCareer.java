package vo;


public class ProjectCareer {
	private String projectCareerId;
	private String resumeId;
	private String projectName;
	private String developmentPeriod;
	private String duration;
	private String language;
	private String dbos;
	private String etc;
	
	public ProjectCareer() {}


	public String getProjectCareerId() {
		return projectCareerId;
	}

	public void setProjectCareerId(String projectCareerId) {
		this.projectCareerId = projectCareerId;
	}

	public String getResumeId() {
		return resumeId;
	}

	public void setResumeId(String resumeId) {
		this.resumeId = resumeId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getDevelopmentPeriod() {
		return developmentPeriod;
	}

	public void setDevelopmentPeriod(String developmentPeriod) {
		this.developmentPeriod = developmentPeriod;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getDbos() {
		return dbos;
	}

	public void setDbos(String dbos) {
		this.dbos = dbos;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	@Override
	public String toString() {
		return "ProjectCareer [projectCareerID=" + projectCareerId + ", resumeId=" + resumeId + ", projectName="
				+ projectName + ", developmentPeriod=" + developmentPeriod + ", duration=" + duration + ", language="
				+ language + ", dbos=" + dbos + ", etc=" + etc + "]";
	}
	
	public void setEmptyValues(){
		this.projectCareerId = "";
		this.resumeId = "";
		this.projectName = "";
		this.developmentPeriod = "";
		this.duration = "";
		this.language = "";
		this.dbos = "";
		this.etc = "";
	}
	
	
}
