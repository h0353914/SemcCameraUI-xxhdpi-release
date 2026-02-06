package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Iterator;

class DefaultItemAnimator$3 implements Runnable {
    final /* synthetic */ DefaultItemAnimator this$0;
    final /* synthetic */ ArrayList val$additions;

    DefaultItemAnimator$3(DefaultItemAnimator defaultItemAnimator, ArrayList arrayList) {
        this.this$0 = defaultItemAnimator;
        this.val$additions = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.val$additions.iterator();
        while (it.hasNext()) {
            this.this$0.animateAddImpl((RecyclerView$ViewHolder) it.next());
        }
        this.val$additions.clear();
        this.this$0.mAdditionsList.remove(this.val$additions);
    }
}
