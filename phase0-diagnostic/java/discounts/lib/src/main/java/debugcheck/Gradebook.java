package debugcheck;

import java.util.ArrayList;
import java.util.List;

public class Gradebook {
    private final List<Integer> scores = new ArrayList<>();

    public void add(int score) {
        if (score < 0 || score > 100) {
            throw new IllegalArgumentException("score out of range: " + score);
        }
        scores.add(score);
    }

    public double average() {
        if (scores.isEmpty()) {
            return 0.0;
        }
        double sum = 0;
        for (int s : scores) {
            sum += s;
        }
        return sum / scores.size();
    }

    public int highest() {
        if (scores.isEmpty()) {
            throw new IllegalStateException("no scores");
        }
        int best = scores.get(0);
        for (int s : scores) {
            if (s > best) {
                best = s;
            }
        }
        return best;
    }

    public int countAtLeast(int threshold) {
        int count = 0;
        for (int s : scores) {
            if (s >= threshold) {
                count++;
            }
        }
        return count;
    }
}