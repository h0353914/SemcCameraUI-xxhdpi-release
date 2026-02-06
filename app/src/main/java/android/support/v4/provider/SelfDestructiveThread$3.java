package android.support.v4.provider;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

class SelfDestructiveThread$3 implements Runnable {
    final /* synthetic */ SelfDestructiveThread this$0;
    final /* synthetic */ Callable val$callable;
    final /* synthetic */ Condition val$cond;
    final /* synthetic */ AtomicReference val$holder;
    final /* synthetic */ ReentrantLock val$lock;
    final /* synthetic */ AtomicBoolean val$running;

    SelfDestructiveThread$3(SelfDestructiveThread selfDestructiveThread, AtomicReference atomicReference, Callable callable, ReentrantLock reentrantLock, AtomicBoolean atomicBoolean, Condition condition) {
        this.this$0 = selfDestructiveThread;
        this.val$holder = atomicReference;
        this.val$callable = callable;
        this.val$lock = reentrantLock;
        this.val$running = atomicBoolean;
        this.val$cond = condition;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.val$holder.set(this.val$callable.call());
        } catch (Exception unused) {
        }
        this.val$lock.lock();
        try {
            this.val$running.set(false);
            this.val$cond.signal();
        } finally {
            this.val$lock.unlock();
        }
    }
}
