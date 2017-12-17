using System;
using System.Linq;

public class Solution
{
    public static void Main()
    {
        var n = int.Parse(Console.ReadLine());
        var lab = new int[n][];
        var result = new int[n][];
        for(var i = 0; i < n; i++)
        {
            result[i] = new int[n];
            lab[i] = Console.ReadLine()
                .Split(' ')
                .Select(int.Parse)
                .ToArray();
        }


        for (int row = 0; row < n; ++row) {
            for (int col = 0; col < n; ++col) {
                var top = 0;
                var left = 0;
                if (row - 1 >= 0) {
                    top = result[row - 1][col];
                    if (lab[row - 1][col] == lab[row][col]) {
                        top++;
                    }
                }

                if (col - 1 >= 0) {
                    left = result[row][col - 1];
                    if (lab[row][col - 1] == lab[row][col]) {
                        left++;
                    }
                }

                if (top != 0 && left != 0) {
                    result[row][col] = Math.Min(top, left) + 1;
                }
                else {
                    result[row][col] = Math.Max(top, left) + 1;
                }
            }
        }

        Console.WriteLine(result[n - 1][n - 1]);
    }
}

