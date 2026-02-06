package android.arch.core.executor;

import java.util.concurrent.Executor;

class ArchTaskExecutor$2 implements Executor {
    ArchTaskExecutor$2() {
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        ArchTaskExecutor.getInstance().executeOnDiskIO(runnable);
    }
}
