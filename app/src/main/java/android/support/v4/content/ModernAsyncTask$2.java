package android.support.v4.content;

import android.os.Binder;
import android.os.Process;

/* JADX INFO: Add missing generic type declarations: [Params, Result] */
class ModernAsyncTask$2<Params, Result> extends ModernAsyncTask$WorkerRunnable<Params, Result> {
    final /* synthetic */ ModernAsyncTask this$0;

    ModernAsyncTask$2(ModernAsyncTask modernAsyncTask) {
        this.this$0 = modernAsyncTask;
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws Exception {
        Result result;
        this.this$0.mTaskInvoked.set(true);
        Result result2 = null;
        try {
            try {
                Process.setThreadPriority(10);
                result = (Result) this.this$0.doInBackground(this.mParams);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            Binder.flushPendingCommands();
            this.this$0.postResult(result);
            return result;
        } catch (Throwable th3) {
            th = th3;
            result2 = result;
            this.this$0.postResult(result2);
            throw th;
        }
    }
}
