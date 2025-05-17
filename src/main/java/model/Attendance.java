package model;

public class Attendance {
    private String attendanceId;
    private String userId;
    private String classId;
    private String attendanceDate;
    private boolean present;

    public Attendance() {}

    public Attendance(String attendanceId, String userId, String classId, String attendanceDate, boolean present) {
        this.attendanceId = attendanceId;
        this.userId = userId;
        this.classId = classId;
        this.attendanceDate = attendanceDate;
        this.present = present;
    }

    public String getAttendanceId() {
        return attendanceId;
    }

    public void setAttendanceId(String attendanceId) {
        this.attendanceId = attendanceId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getAttendanceDate() {
        return attendanceDate;
    }

    public void setAttendanceDate(String attendanceDate) {
        this.attendanceDate = attendanceDate;
    }

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    @Override
    public String toString() {
        return "Attendance{" +
                "attendanceId='" + attendanceId + '\'' +
                ", userId='" + userId + '\'' +
                ", classId='" + classId + '\'' +
                ", attendanceDate='" + attendanceDate + '\'' +
                ", present=" + present +
                '}';
    }
}
