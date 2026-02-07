package android.support.v4.net;

import java.io.FileDescriptor;
import java.net.DatagramSocket;
import java.net.Socket;
import java.net.SocketException;

/* JADX INFO: loaded from: classes.dex */
class DatagramSocketWrapper extends Socket {
    DatagramSocketWrapper(DatagramSocket datagramSocket, FileDescriptor fileDescriptor) throws SocketException {
        super(new DatagramSocketWrapper$DatagramSocketImplWrapper(datagramSocket, fileDescriptor));
    }
}
