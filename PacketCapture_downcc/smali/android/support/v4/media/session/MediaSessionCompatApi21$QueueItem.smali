.class Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueItem"
.end annotation


# direct methods
.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "queueItem"    # Ljava/lang/Object;

    .prologue
    .line 265
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    .end local p0    # "queueItem":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getQueueId(Ljava/lang/Object;)J
    .locals 2
    .param p0, "queueItem"    # Ljava/lang/Object;

    .prologue
    .line 269
    check-cast p0, Landroid/media/session/MediaSession$QueueItem;

    .end local p0    # "queueItem":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v0

    return-wide v0
.end method
