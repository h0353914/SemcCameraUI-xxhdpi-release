package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FileTreeWalk.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\f\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState;", "Lkotlin/io/FileTreeWalk$DirectoryState;", "rootDir", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "fileIndex", "", "fileList", "", "[Ljava/io/File;", "rootVisited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
final class FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState extends FileTreeWalk$DirectoryState {
    private int fileIndex;
    private File[] fileList;
    private boolean rootVisited;
    final /* synthetic */ FileTreeWalk$FileTreeWalkIterator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState(@NotNull FileTreeWalk$FileTreeWalkIterator fileTreeWalk$FileTreeWalkIterator, File rootDir) {
        super(rootDir);
        Intrinsics.checkParameterIsNotNull(rootDir, "rootDir");
        this.this$0 = fileTreeWalk$FileTreeWalkIterator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x008f, code lost:
    
        if (r0.length == 0) goto L37;
     */
    @Override // kotlin.io.FileTreeWalk$WalkState
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File step() {
        Function2 function2Access$getOnFail$p;
        if (!this.rootVisited) {
            Function1 function1Access$getOnEnter$p = FileTreeWalk.access$getOnEnter$p(this.this$0.this$0);
            if (function1Access$getOnEnter$p != null && !((Boolean) function1Access$getOnEnter$p.invoke(getRoot())).booleanValue()) {
                return null;
            }
            this.rootVisited = true;
            return getRoot();
        }
        if (this.fileList != null) {
            int i = this.fileIndex;
            File[] fileArr = this.fileList;
            if (fileArr == null) {
                Intrinsics.throwNpe();
            }
            if (i >= fileArr.length) {
                Function1 function1Access$getOnLeave$p = FileTreeWalk.access$getOnLeave$p(this.this$0.this$0);
                if (function1Access$getOnLeave$p != null) {
                }
                return null;
            }
        }
        if (this.fileList == null) {
            this.fileList = getRoot().listFiles();
            if (this.fileList == null && (function2Access$getOnFail$p = FileTreeWalk.access$getOnFail$p(this.this$0.this$0)) != null) {
            }
            if (this.fileList != null) {
                File[] fileArr2 = this.fileList;
                if (fileArr2 == null) {
                    Intrinsics.throwNpe();
                }
            }
            Function1 function1Access$getOnLeave$p2 = FileTreeWalk.access$getOnLeave$p(this.this$0.this$0);
            if (function1Access$getOnLeave$p2 != null) {
            }
            return null;
        }
        File[] fileArr3 = this.fileList;
        if (fileArr3 == null) {
            Intrinsics.throwNpe();
        }
        int i2 = this.fileIndex;
        this.fileIndex = i2 + 1;
        return fileArr3[i2];
    }
}
