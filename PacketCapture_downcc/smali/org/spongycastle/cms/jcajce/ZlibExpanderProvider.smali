.class public Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider;
.super Ljava/lang/Object;
.source "ZlibExpanderProvider.java"

# interfaces
.implements Lorg/spongycastle/operator/InputExpanderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;
    }
.end annotation


# instance fields
.field private final limit:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider;->limit:J

    .line 24
    return-void
.end method
