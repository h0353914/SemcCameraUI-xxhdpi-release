package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin._Assertions;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: compiled from: FileTreeWalk.kt */
@Metadata(bv = {1, 0, 2}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\"\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/io/FileTreeWalk$DirectoryState;", "Lkotlin/io/FileTreeWalk$WalkState;", "rootDir", "Ljava/io/File;", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 10})
abstract class FileTreeWalk$DirectoryState extends FileTreeWalk$WalkState {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileTreeWalk$DirectoryState(@NotNull File rootDir) {
        super(rootDir);
        Intrinsics.checkParameterIsNotNull(rootDir, "rootDir");
        if (_Assertions.ENABLED) {
            boolean zIsDirectory = rootDir.isDirectory();
            if (_Assertions.ENABLED && !zIsDirectory) {
                throw new AssertionError("rootDir must be verified to be directory beforehand.");
            }
        }
    }
}
