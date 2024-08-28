class newThread implements Runnable{
	Thread t;
	int threadNo;
	public newThread(int threadNo) {
		t=new Thread(this);
		this.threadNo=threadNo;
		t.start();
	}
	@Override
	public void run() {
		for(int i=0;i<5;i++) {
			System.out.println(threadNo+"-child thread "+i);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO: handle exception
				System.out.println("Interrupted");
			}
		}
		System.out.println("Child Exited");
	}
}

public class ThreadProgram {
	public static void main(String[] args) {
		System.out.println("Main thread started");
		newThread ob1= new newThread(1);
		newThread ob2=new newThread(2);
		try {
			ob1.t.join();
			ob2.t.join();
		} catch (InterruptedException e) {
			// TODO: handle exception
		}
		System.out.println("Main thread end");
	}
}
