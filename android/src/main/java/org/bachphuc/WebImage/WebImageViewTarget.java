package org.bachphuc.WebImage;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.transition.Transition;

public class WebImageViewTarget extends CustomViewTarget<AwesomeWebImageView, Bitmap> {
    WebImageViewTarget(AwesomeWebImageView view) {
        super(view);
    }

    @Override
    protected void onResourceCleared(@Nullable Drawable placeholder) {
        view.setBitmap(null);
    }

    @Override
    public void onLoadFailed(@Nullable Drawable errorDrawable) {
        view.setBitmap(null);
    }

    @Override
    public void onResourceReady(@NonNull Bitmap bitmap, @Nullable Transition<? super Bitmap> transition) {
        view.setBitmap(bitmap);
    }
}
