package android.arch.core.executor;

import java.util.concurrent.Executor;

class ArchTaskExecutor$1 implements Executor {
    ArchTaskExecutor$1() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        ArchTaskExecutor.getInstance().postToMainThread(runnable);
    }
}
