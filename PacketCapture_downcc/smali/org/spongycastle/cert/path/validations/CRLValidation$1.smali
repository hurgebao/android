.class Lorg/spongycastle/cert/path/validations/CRLValidation$1;
.super Ljava/lang/Object;
.source "CRLValidation.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/path/validations/CRLValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/cert/path/validations/CRLValidation;


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 43
    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 36
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/cert/X509CRLHolder;

    .line 38
    .local v0, "crl":Lorg/spongycastle/cert/X509CRLHolder;
    invoke-virtual {v0}, Lorg/spongycastle/cert/X509CRLHolder;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/cert/path/validations/CRLValidation$1;->this$0:Lorg/spongycastle/cert/path/validations/CRLValidation;

    invoke-static {v2}, Lorg/spongycastle/cert/path/validations/CRLValidation;->access$000(Lorg/spongycastle/cert/path/validations/CRLValidation;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
