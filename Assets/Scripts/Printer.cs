using UnityEngine;

namespace Game
{
    public class Printer : MonoBehaviour
    {
        void Update()
        {
            Hello.Salute.Print("Hello World");
        }
    }
}
