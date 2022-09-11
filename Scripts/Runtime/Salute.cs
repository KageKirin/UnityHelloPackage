using UnityEngine;

namespace Hello
{
    public static class Salute
    {
        public static void Print(string message)
        {
            Debug.Log($"[salute]: {message}");
        }
    }
}
