package debugcheck;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class GradebookTest {
    @Test
    void highestReturnsMax() {
        Gradebook g = new Gradebook();
        g.add(72); g.add(95); g.add(88);
        assertEquals(95, g.highest());
    }

    @Test
    void countAtLeastIncludesThreshold() {
        Gradebook g = new Gradebook();
        g.add(70); g.add(69); g.add(90);
        assertEquals(2, g.countAtLeast(70));
    }

    @Test
    void averageOfTwoScores() {
        Gradebook g = new Gradebook();
        g.add(90); g.add(85);
        assertEquals(87.5, g.average(), 1e-9);
    }

    @Test
    void rejectsOutOfRange() {
        Gradebook g = new Gradebook();
        assertThrows(IllegalArgumentException.class, () -> g.add(101));
    }
}