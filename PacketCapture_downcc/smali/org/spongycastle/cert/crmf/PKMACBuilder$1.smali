.class Lorg/spongycastle/cert/crmf/PKMACBuilder$1;
.super Ljava/lang/Object;
.source "PKMACBuilder.java"

# interfaces
.implements Lorg/spongycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cert/crmf/PKMACBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bOut:Ljava/io/ByteArrayOutputStream;

.field final synthetic this$0:Lorg/spongycastle/cert/crmf/PKMACBuilder;

.field final synthetic val$key:[B


# virtual methods
.method public getMac()[B
    .locals 4

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->this$0:Lorg/spongycastle/cert/crmf/PKMACBuilder;

    invoke-static {v1}, Lorg/spongycastle/cert/crmf/PKMACBuilder;->access$000(Lorg/spongycastle/cert/crmf/PKMACBuilder;)Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->val$key:[B

    iget-object v3, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/cert/crmf/PKMACValuesCalculator;->calculateMac([B[B)[B
    :try_end_0
    .catch Lorg/spongycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lorg/spongycastle/cert/crmf/CRMFException;
    new-instance v1, Lorg/spongycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calculating mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/cert/crmf/CRMFException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/spongycastle/cert/crmf/PKMACBuilder$1;->bOut:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
