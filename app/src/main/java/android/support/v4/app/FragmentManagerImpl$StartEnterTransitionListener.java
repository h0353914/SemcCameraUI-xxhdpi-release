package android.support.v4.app;

/* JADX INFO: loaded from: classes.dex */
class FragmentManagerImpl$StartEnterTransitionListener implements Fragment$OnStartEnterTransitionListener {
    final boolean mIsBack;
    private int mNumPostponed;
    final BackStackRecord mRecord;

    FragmentManagerImpl$StartEnterTransitionListener(BackStackRecord backStackRecord, boolean z) {
        this.mIsBack = z;
        this.mRecord = backStackRecord;
    }

    @Override // android.support.v4.app.Fragment$OnStartEnterTransitionListener
    public void onStartEnterTransition() {
        this.mNumPostponed--;
        if (this.mNumPostponed != 0) {
            return;
        }
        this.mRecord.mManager.scheduleCommit();
    }

    @Override // android.support.v4.app.Fragment$OnStartEnterTransitionListener
    public void startListening() {
        this.mNumPostponed++;
    }

    public boolean isReady() {
        return this.mNumPostponed == 0;
    }

    public void completeTransaction() {
        boolean z = this.mNumPostponed > 0;
        FragmentManagerImpl fragmentManagerImpl = this.mRecord.mManager;
        int size = fragmentManagerImpl.mAdded.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = fragmentManagerImpl.mAdded.get(i);
            fragment.setOnStartEnterTransitionListener(null);
            if (z && fragment.isPostponed()) {
                fragment.startPostponedEnterTransition();
            }
        }
        this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, !z, true);
    }

    public void cancelTransaction() {
        this.mRecord.mManager.completeExecute(this.mRecord, this.mIsBack, false, false);
    }
}
