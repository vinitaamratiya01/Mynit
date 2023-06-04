import java.util.*;

public class MonsterHunter {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        // Read the input
        int n = sc.nextInt();  // Number of monsters
        int q = sc.nextInt();  // Number of heroes
        int[] A = new int[n];  // Positions of monsters
        int[] Al = new int[n]; // Strengths of monsters
        int[] B = new int[q];  // Times when heroes appear
        int[] Bl = new int[q]; // Strengths of heroes
        
        for (int i = 0; i < n; i++) {
            A[i] = sc.nextInt();
             int b = sc.nextInt();
            Al[i] = sc.nextInt();
        }
        
        for (int i = 0; i < q; i++) {
            B[i] = sc.nextInt();
            Bl[i] = sc.nextInt();
        }
        
        // Sort the monsters by position
        Monster[] monsters = new Monster[n];
        for (int i = 0; i < n; i++) {
            monsters[i] = new Monster(A[i], Al[i]);
        }
        Arrays.sort(monsters);
        
        // Process each hero
        int[] ans = new int[q];
        for (int i = 0; i < q; i++) {
            int t = B[i];  // Time when the hero appears
            int b = Bl[i];  // Strength of the hero
            int count = 0;  // Count of destroyed monsters
            for (int j = 0; j < n; j++) {
                if (monsters[j].pos <= t && monsters[j].str >= b) {
                    // The monster is within range and can be destroyed
                    count++;
                } else {
                    // The monster is out of range or too strong
                    monsters[j-count] = monsters[j];
                }
            }
            n -= count;  // Update the number of monsters left
            ans[i] = n;  // Store the answer for this hero
        }
        
        // Print the answers
        for (int i = 0; i < q; i++) {
            System.out.println(ans[i]);
        }
    }
    
    static class Monster implements Comparable<Monster> {
        int pos, str;
        public Monster(int p, int s) {
            pos = p;
            str = s;
        }
        public int compareTo(Monster other) {
            return pos - other.pos;
        }
    }
}
