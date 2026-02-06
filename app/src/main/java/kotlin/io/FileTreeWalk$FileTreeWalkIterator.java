package kotlin.io;

import java.io.File;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.AbstractIterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileTreeWalk.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\r\u000e\u000fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\bH\u0014J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0002J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0082\u0010R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlin/io/FileTreeWalk$FileTreeWalkIterator;", "Lkotlin/collections/AbstractIterator;", "Ljava/io/File;", "(Lkotlin/io/FileTreeWalk;)V", "state", "Ljava/util/Stack;", "Lkotlin/io/FileTreeWalk$WalkState;", "computeNext", "", "directoryState", "Lkotlin/io/FileTreeWalk$DirectoryState;", "root", "gotoNext", "BottomUpDirectoryState", "SingleFileState", "TopDownDirectoryState", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
final class FileTreeWalk$FileTreeWalkIterator extends AbstractIterator<File> {
    private final Stack<FileTreeWalk$WalkState> state = new Stack<>();
    final /* synthetic */ FileTreeWalk this$0;

    public FileTreeWalk$FileTreeWalkIterator(FileTreeWalk fileTreeWalk) {
        this.this$0 = fileTreeWalk;
        if (FileTreeWalk.access$getStart$p(fileTreeWalk).isDirectory()) {
            this.state.push(directoryState(FileTreeWalk.access$getStart$p(fileTreeWalk)));
        } else if (FileTreeWalk.access$getStart$p(fileTreeWalk).isFile()) {
            this.state.push(new FileTreeWalk$FileTreeWalkIterator$SingleFileState(this, FileTreeWalk.access$getStart$p(fileTreeWalk)));
        } else {
            done();
        }
    }

    @Override // kotlin.collections.AbstractIterator
    protected void computeNext() {
        File fileGotoNext = gotoNext();
        if (fileGotoNext != null) {
            setNext(fileGotoNext);
        } else {
            done();
        }
    }

    private final FileTreeWalk$DirectoryState directoryState(File root) {
        switch (FileTreeWalk.access$getDirection$p(this.this$0)) {
            case TOP_DOWN:
                return new FileTreeWalk$FileTreeWalkIterator$TopDownDirectoryState(this, root);
            case BOTTOM_UP:
                return new FileTreeWalk$FileTreeWalkIterator$BottomUpDirectoryState(this, root);
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final File gotoNext() {
        while (!this.state.empty()) {
            FileTreeWalk$WalkState fileTreeWalk$WalkStatePeek = this.state.peek();
            if (fileTreeWalk$WalkStatePeek == null) {
                Intrinsics.throwNpe();
            }
            FileTreeWalk$WalkState fileTreeWalk$WalkState = fileTreeWalk$WalkStatePeek;
            File fileStep = fileTreeWalk$WalkState.step();
            if (fileStep == null) {
                this.state.pop();
            } else {
                if (Intrinsics.areEqual(fileStep, fileTreeWalk$WalkState.getRoot()) || !fileStep.isDirectory() || this.state.size() >= FileTreeWalk.access$getMaxDepth$p(this.this$0)) {
                    return fileStep;
                }
                this.state.push(directoryState(fileStep));
            }
        }
        return null;
    }
}
