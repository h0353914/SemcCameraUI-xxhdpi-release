package com.sonyericsson.android.camera.controller.xperiaxloops

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.ServiceConnection
import android.os.IBinder
import android.os.RemoteException
import android.support.annotation.UiThread
import com.sonyericsson.android.camera.util.CamLog
import com.sonymobile.xperiaxloops.IXperiaXLoopsService
import com.sonymobile.xperiaxloops.IXperiaXLoopsServiceCallback













class XperiaXLoopsManager(private val mContext: Context) {
    companion object {
        private val LOOPS_SERVICE_CLASS_NAME = "com.sonymobile.xperiaxloops.XperiaXLoopsService"
        private val LOOPS_SERVICE_PACKAGE_NAME = "com.sonymobile.xperiaxloops"
        private val TYPE_CAMERA = 2
    }




















    private var mService: IXperiaXLoopsService? = null
    private var mIsConnectionRequested = false
    private val mCallback = object : IXperiaXLoopsServiceCallback.Stub() {
        @Throws(exceptionClasses = [RemoteException::class])
        override fun hide(b: Boolean) {
        }

        @Throws(exceptionClasses = [RemoteException::class])
        override fun show() {
        }
    }

    private val mConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName, service: IBinder) {
            if (CamLog.DEBUG) {
                CamLog.d("onServiceConnected")
            }
            if (mIsConnectionRequested) {
                mService = IXperiaXLoopsService.Stub.asInterface(service)
                registerCallback()
                notifyShowLoopsByApps(true)
            } else {
                if (CamLog.DEBUG) {
                    CamLog.d("Loops is already hidden.")
                }
                mContext.unbindService(this)
                mService = null as IXperiaXLoopsService?
            }
        }

        override fun onServiceDisconnected(name: ComponentName) {
            if (CamLog.DEBUG) {
                CamLog.d("onServiceDisConnected")
            }
        }
    }










    val isConnected: Boolean
        get() = mService != null

    @UiThread
    fun connect() {
        if (CamLog.DEBUG) {
            CamLog.d("connect")
        }
        val intent = Intent()
        intent.setClassName(LOOPS_SERVICE_PACKAGE_NAME, LOOPS_SERVICE_CLASS_NAME)
        mContext.bindService(intent, mConnection, Context.BIND_AUTO_CREATE)
        mIsConnectionRequested = true
    }




    @UiThread
    fun disconnect() {
        if (CamLog.DEBUG) {
            CamLog.d("disconnect")
        }
        if (isConnected) {
            notifyShowLoopsByApps(false)
            unregisterCallback()
            mContext.unbindService(mConnection)
            mService = null as IXperiaXLoopsService?
        }
        mIsConnectionRequested = false
    }



    private fun registerCallback() {
        if (CamLog.VERBOSE) {
            CamLog.d("registerCallback")
        }
        try {
            mService?.registerCallback(TYPE_CAMERA, mCallback)
        } catch (e: RemoteException) {
            CamLog.e(e.toString())
        }
    }




    private fun unregisterCallback() {
        if (CamLog.VERBOSE) {
            CamLog.d("unregisterCallback")
        }
        try {
            mService?.unregisterCallback(TYPE_CAMERA, mCallback)
        } catch (e: RemoteException) {
            CamLog.e(e.toString())
        }
    }




    private fun notifyShowLoopsByApps(isShown: Boolean) {
        if (CamLog.VERBOSE) {
            CamLog.d("notifyShowLoopsByApps: " + isShown)
        }
        try {
            mService?.notifyShowLoopsByApps(isShown, TYPE_CAMERA)
        } catch (e: RemoteException) {
            CamLog.e(e.toString())
        }
    }
}
