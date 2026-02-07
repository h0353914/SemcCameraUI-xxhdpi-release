package android.support.v4.content;

/* JADX INFO: loaded from: classes.dex */
class ModernAsyncTask$AsyncTaskResult<Data> {
    final Data[] mData;
    final ModernAsyncTask mTask;

    ModernAsyncTask$AsyncTaskResult(ModernAsyncTask modernAsyncTask, Data... dataArr) {
        this.mTask = modernAsyncTask;
        this.mData = dataArr;
    }
}
