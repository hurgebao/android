.class Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;
.super Ljava/lang/Object;
.source "IntegerPolynomial.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombineTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;",
        ">;"
    }
.end annotation


# instance fields
.field private modRes1:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

.field private modRes2:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->call()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes1:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes2:Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->combineRho(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
