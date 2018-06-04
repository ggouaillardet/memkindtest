public class MemkindTest {

    static {
        System.loadLibrary("memkindtest");
    }

    public static native void dlopen ();

    public static void main (String[] args) {
        dlopen();
    }
}
