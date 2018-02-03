.class public abstract Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field protected numColumns:I

.field protected numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumColumns()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->numColumns:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;->numRows:I

    return v0
.end method
