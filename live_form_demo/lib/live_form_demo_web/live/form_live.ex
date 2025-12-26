defmodule LiveFormDemoWeb.FormLive do
  use LiveFormDemoWeb, :live_view

  def mount(_params, _session, socket) do
    if connected?(socket) do
      Phoenix.PubSub.subscribe(LiveFormDemo.PubSub, "form")
    end

    {:ok,
    assign(socket,
      form: %{
        "field1" => "",
        "field2" => "",
        "field3" => "",
        "field4" => "",
        "field5" => ""
      }
    )}
  end

  def render(assigns) do
    ~H"""
    <div>
      <h1>Formulário em tempo real</h1>

      <.form for={@form} as={:form} phx-change="update">
        <div>
          <label>field1</label>
          <input type="text" name="form[field1]" value={@form["field1"]} />
        </div>

        <div>
          <label>field2</label>
          <input type="text" name="form[field2]" value={@form["field2"]} />
        </div>

        <div>
          <label>field3</label>
          <input type="text" name="form[field3]" value={@form["field3"]} />
        </div>

        <div>
          <label>field4</label>
          <input type="text" name="form[field4]" value={@form["field4"]} />
        </div>

        <div>
          <label>field5</label>
          <input type="text" name="form[field5]" value={@form["field5"]} />
        </div>
      </.form>

      <h3>Estado atual</h3>
      <pre><%= inspect(@form) %></pre>
    </div>
    """
  end



  def handle_event("update", %{"form" => form_params}, socket) do
    Phoenix.PubSub.broadcast(
      LiveFormDemo.PubSub,
      "form",
      {:form_updated, form_params}
    )

    {:noreply, assign(socket, form: form_params)}
  end

  def handle_info({:form_updated, form}, socket) do
    {:noreply, assign(socket, form: form)}
  end

end
