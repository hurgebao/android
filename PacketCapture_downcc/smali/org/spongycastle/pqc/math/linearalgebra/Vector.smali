.class public abstract Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# instance fields
.field protected length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.end method

.method public final getLength()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->length:I

    return v0
.end method
