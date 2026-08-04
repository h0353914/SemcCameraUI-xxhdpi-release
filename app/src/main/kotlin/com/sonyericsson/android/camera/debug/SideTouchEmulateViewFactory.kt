package com.sonyericsson.android.camera.debug

import android.app.Activity
import android.content.Context
import android.graphics.Color
import android.view.InputDevice
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import com.sonyericsson.android.camera.SideTouchEventDetector.SideTouchArea
import com.sonyericsson.android.camera.util.CamLog












object SideTouchEmulateViewFactory {

    private const val TAG = "SideTouchEmulateView"

    fun create(parent: ViewGroup, area: SideTouchArea): View? {
        val tag = "SideTouchEmulateView-" + area.name



        for (index in 0 until parent.childCount) {
            if (parent.getChildAt(index).tag == tag) {
                CamLog.d("Already added")
                return null
            }
        }




        val view = SideTouchEmulateView(parent.context, area)
        view.tag = tag
        view.setBackgroundColor(Color.argb(0x66, 0xff, 0, 0))
        parent.addView(view as View)



        val lp = view.layoutParams as FrameLayout.LayoutParams
        lp.width = -1
        lp.height = (20f * parent.resources.displayMetrics.density).toInt()
        lp.gravity = when (area) {
            SideTouchArea.RIGHT -> 0x30
            SideTouchArea.LEFT -> 0x50
            SideTouchArea.TOP -> 0x03
            SideTouchArea.BOTTOM -> 0x05
            else -> 0x30
        }
        view.requestLayout()
        return view
    }
}

private class SideTouchEmulateView(context: Context, val area: SideTouchArea) : FrameLayout(context) {

    override fun onTouchEvent(event: MotionEvent): Boolean {
        if (CamLog.DEBUG) {
            CamLog.d("SideTouchView x:" + event.x + " y:" + event.y)
        }

        val copy = MotionEvent.obtain(event)
        val xCoord = when (area) {
            SideTouchArea.RIGHT -> event.device.getMotionRange(MotionEvent.AXIS_X).max
            SideTouchArea.LEFT -> event.device.getMotionRange(MotionEvent.AXIS_X).min
            else -> event.y
        }
        copy.setLocation(xCoord, copy.x)
        copy.source = 0x20000000

        val result = (context as Activity).onGenericMotionEvent(copy)
        copy.recycle()
        return result
    }
}
