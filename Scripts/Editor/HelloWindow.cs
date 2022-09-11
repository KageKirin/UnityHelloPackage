using UnityEngine;
using UnityEditor;
using UnityEngine.UIElements;

namespace Hello
{
    public class HelloWindow : EditorWindow
    {
        [MenuItem("Hello/Window")]
        public static void ShowWindow()
        {
            EditorWindow.GetWindow(typeof(HelloWindow));
        }

        void OnGUI()
        {
            EditorGUILayout.LabelField("Hello");

            if (GUILayout.Button("Print"))
            {
                Salute.Print("Ave!");
            }
        }
    }
}
