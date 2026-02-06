package android.support.v7.app;

import android.content.res.Resources$NotFoundException;

class AppCompatDelegateImpl$1 implements Thread$UncaughtExceptionHandler {
    final /* synthetic */ Thread$UncaughtExceptionHandler val$defHandler;

    AppCompatDelegateImpl$1(Thread$UncaughtExceptionHandler thread$UncaughtExceptionHandler) {
        this.val$defHandler = thread$UncaughtExceptionHandler;
    }

    @Override // java.lang.Thread$UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (shouldWrapException(th)) {
            Resources$NotFoundException resources$NotFoundException = new Resources$NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            resources$NotFoundException.initCause(th.getCause());
            resources$NotFoundException.setStackTrace(th.getStackTrace());
            this.val$defHandler.uncaughtException(thread, resources$NotFoundException);
            return;
        }
        this.val$defHandler.uncaughtException(thread, th);
    }

    private boolean shouldWrapException(Throwable th) {
        String message;
        if (!(th instanceof Resources$NotFoundException) || (message = th.getMessage()) == null) {
            return false;
        }
        return message.contains("drawable") || message.contains("Drawable");
    }
}
