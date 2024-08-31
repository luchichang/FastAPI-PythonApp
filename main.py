from fastapi import FastAPI, Request, Form
from fastapi.templating import Jinja2Templates
from fastapi.responses import HTMLResponse

app = FastAPI()
templates = Jinja2Templates(directory="templates")



@app.get("/", response_class=HTMLResponse)
async def read_form(request: Request):
    return templates.TemplateResponse("form.html", {"request": request})


@app.post("/submit/")
async def submit_form(request: Request, name: str = Form(...), age: int = Form(...)):
    return templates.TemplateResponse("form.html", {"request": request, "name": name, "age": age})

