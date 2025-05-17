package model;

public class ViewSchedule {
    private String userId;
    private String userName;
    private String classId;
    private String className;
    private String scheduleDate;
    private String time;

    public ViewSchedule() {}

    public ViewSchedule(String userId, String userName, String classId, String className, String scheduleDate, String time) {
        this.userId = userId;
        this.userName = userName;
        this.classId = classId;
        this.className = className;
        this.scheduleDate = scheduleDate;
        this.time = time;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getScheduleDate() {
        return scheduleDate;
    }

    public void setScheduleDate(String scheduleDate) {
        this.scheduleDate = scheduleDate;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "ViewSchedule{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", classId='" + classId + '\'' +
                ", className='" + className + '\'' +
                ", scheduleDate='" + scheduleDate + '\'' +
                ", time='" + time + '\'' +
                '}';
    }
}
