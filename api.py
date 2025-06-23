from fastapi import FastAPI

app = FastAPI(title="Health Check API")

@app.get("/health")
async def health_check():
    """
    FC 调度面会定期调用此接口，
    返回 {"status":"ok"} 即表示服务正常。
    """
    return {"status": "ok牛蛙"}
