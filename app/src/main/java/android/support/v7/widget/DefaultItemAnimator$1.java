package android.support.v7.widget;

import java.util.ArrayList;

class DefaultItemAnimator$1 implements Runnable {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ArrayList val$moves;

    DefaultItemAnimator$1(DefaultItemAnimator defaultItemAnimator, ArrayList arrayList) {
        this.this$0 = defaultItemAnimator;
        this.val$moves = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (DefaultItemAnimator$MoveInfo defaultItemAnimator$MoveInfo : this.val$moves) {
            this.this$0.animateMoveImpl(defaultItemAnimator$MoveInfo.holder, defaultItemAnimator$MoveInfo.fromX, defaultItemAnimator$MoveInfo.fromY, defaultItemAnimator$MoveInfo.toX, defaultItemAnimator$MoveInfo.toY);
        }
        this.val$moves.clear();
        this.this$0.mMovesList.remove(this.val$moves);
    }
}
