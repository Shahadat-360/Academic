class callMe{
		synchronized void call(String msg) {
		System.out.print("["+msg);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			System.out.println("Interrupt");
		}
		System.out.print("]");
	}
}
class caller implements Runnable{
	String msg;callMe Target;Thread t;
	caller(callMe targ,String msg){
		this.msg=msg;
		Target=targ;
		t=new Thread(this);
		t.start();
	}
	@Override
	public void run() {
		Target.call(msg);
	}
}
public class Synch{
	public static void main(String[] args) {
		System.out.println("main thread is started");
		callMe ob=new callMe();
		caller ob1=new caller(ob, "Hello");
		caller ob2=new caller(ob,"Synchornized");
		caller ob3=new caller(ob,"World");
		try {
			ob1.t.join();
			ob2.t.join();
			ob3.t.join();
		} catch (InterruptedException e) {
			System.out.println("Interrupt");
		}
		System.out.println("\nMain thread ended");
	}
}