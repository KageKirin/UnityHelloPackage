using UnityEngine;

namespace Hello
{
    public class HelloPrinter : MonoBehaviour
    {
        public string Message;

        void Update()
        {
            Debug.Log($"Hello: {Message}");
        }
    }
}
