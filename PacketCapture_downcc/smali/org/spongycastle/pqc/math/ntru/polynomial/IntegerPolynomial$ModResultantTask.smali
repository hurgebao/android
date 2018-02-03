.class Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;
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
    name = "ModResultantTask"
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
.field private modulus:I

.field final synthetic this$0:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->call()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 2

    .prologue
    .line 1334
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->this$0:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;->modulus:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method
