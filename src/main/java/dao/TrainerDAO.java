package dao;

import model.Trainer;
import java.util.ArrayList;
import java.util.List;

public class TrainerDAO {
    public List<Trainer> getAllTrainers() {
        List<Trainer> trainers = new ArrayList<>();

        trainers.add(new Trainer("Alice Johnson", "Strength & Muscle Gain", "Strength Building"));
        trainers.add(new Trainer("Bob Smith", "High Intensity & Conditioning", "CrossFit"));
        trainers.add(new Trainer("Priya Sharma", "Mindfulness & Flexibility", "Yoga & Meditation"));
        trainers.add(new Trainer("David Brown", "Customized Fitness Plans", "Personal Training"));

        return trainers;
    }
}
