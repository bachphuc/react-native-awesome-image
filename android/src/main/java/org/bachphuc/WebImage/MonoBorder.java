package org.bachphuc.WebImage;

import android.graphics.Canvas;

import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;

class MonoBorder extends BaseBorder {

    public void setColor(@ColorInt final int color) {
        mPaint.setColor(color);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        canvas.drawPath(mBoxMetrics.getBorderPath(), mPaint);
    }
}
