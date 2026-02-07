package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin._Assertions;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: compiled from: FileTreeWalk.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator$SingleFileState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootFile", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;Ljava/io/File;)V", "visited", "", "step", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
final class FileTreeWalk$FileTreeWalkIterator$SingleFileState extends FileTreeWalk$WalkState {
    final /* synthetic */ FileTreeWalk$FileTreeWalkIterator this$0;
    private boolean visited;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk$FileTreeWalkIterator$SingleFileState(@NotNull FileTreeWalk$FileTreeWalkIterator fileTreeWalk$FileTreeWalkIterator, File rootFile) {
        super(rootFile);
        Intrinsics.checkParameterIsNotNull(rootFile, "rootFile");
        this.this$0 = fileTreeWalk$FileTreeWalkIterator;
        if (_Assertions.ENABLED) {
            boolean zIsFile = rootFile.isFile();
            if (_Assertions.ENABLED && !zIsFile) {
                throw new AssertionError("rootFile must be verified to be file beforehand.");
            }
        }
    }

    @Override // kotlin.io.FileTreeWalk$WalkState
    @Nullable
    public File step() {
        if (this.visited) {
            return null;
        }
        this.visited = true;
        return getRoot();
    }
}
