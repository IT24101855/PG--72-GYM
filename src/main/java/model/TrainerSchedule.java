package model;

public class TrainerSchedule {
    private String trainerId;
    private String classId;
    private String dayOfWeek;    // e.g. "Monday", "Tuesday"
    private String startTime;    // e.g. "07:00 AM"
    private String endTime;      // e.g. "08:00 AM"

    public TrainerSchedule() {}

    public TrainerSchedule(String trainerId, String classId, String dayOfWeek, String startTime, String endTime) {
        this.trainerId = trainerId;
        this.classId = classId;
        this.dayOfWeek = dayOfWeek;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public String getTrainerId() {
        return trainerId;
    }

    public void setTrainerId(String trainerId) {
        this.trainerId = trainerId;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getDayOfWeek() {
        return dayOfWeek;
    }

    public void setDayOfWeek(String dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "TrainerSchedule{" +
                "trainerId='" + trainerId + '\'' +
                ", classId='" + classId + '\'' +
                ", dayOfWeek='" + dayOfWeek + '\'' +
                ", startTime='" + startTime + '\'' +
                ", endTime='" + endTime + '\'' +
                '}';
    }
}
