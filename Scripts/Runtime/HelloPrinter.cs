using UnityEngine;

namespace Hello
{
    public class HelloPrinter : MonoBehaviour
    {
        public string Message;

        void Update()
        {
            Salute.Print($"Hello: {Message}");
        }
    }
}
