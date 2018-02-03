.class public Lorg/spongycastle/asn1/eac/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/asn1/eac/Flags$StringJoiner;
    }
.end annotation


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/Flags;->value:I

    .line 15
    return-void
.end method
