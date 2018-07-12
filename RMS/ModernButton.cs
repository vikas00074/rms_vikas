// <copyright file="ModernButton.cs" company="RMS">
// Copyright (c) RMS. All rights reserved.
// </copyright>

namespace RMS
{
    using System.ComponentModel;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    [ParseChildren(false)]
    [PersistChildren(true)]
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:ModernButton runat=\"server\"></{0}:ModernButton>")]
    public class ModernButton : Button
    {
        [DefaultValue("")]
        public string Value
        {
            get
            {
                return ViewState["Value"] as string ?? string.Empty;
            }

            set
            {
                ViewState["Value"] = value;
            }
        }

        /// <inheritdoc/>
        protected override HtmlTextWriterTag TagKey
        {
            get { return HtmlTextWriterTag.Button; }
        }

        /// <inheritdoc/>
        protected override void AddParsedSubObject(object obj)
        {
            base.AddParsedSubObject(obj);

            var literal = obj as LiteralControl;
            if (literal == null)
            {
                return;
            }

            Value = literal.Text;
        }

        /// <inheritdoc/>
        protected override void RenderContents(HtmlTextWriter writer)
        {
            writer.Write(Value);
        }
    }
}
